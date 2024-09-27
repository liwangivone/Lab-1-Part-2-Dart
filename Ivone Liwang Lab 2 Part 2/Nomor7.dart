import 'dart:collection';

void main() {
  List<String> tasks = ['A', 'B', 'C', 'D', 'E'];

  // Ketergantungan antar tugas
  Map<String, List<String>> dependencies = {
    'A': ['B'], // A harus selesai sebelum B
    'B': ['C'], // B harus selesai sebelum C
    'A': ['C'], // A juga harus selesai sebelum C
    'C': ['D'], // C harus selesai sebelum D
    // E tidak memiliki ketergantungan
  };

  List<String> taskOrder = topologicalSort(tasks, dependencies);

  if (taskOrder.isEmpty) {
    print("Tidak ada urutan tugas yang valid.");
  } else {
    print("Urutan penyelesaian tugas: ${taskOrder.join(' -> ')}");
  }
}

// Fungsi untuk melakukan topological sort
List<String> topologicalSort(List<String> tasks, Map<String, List<String>> dependencies) {
  // Map untuk menyimpan in-degree dari setiap tugas
  Map<String, int> inDegree = {};
  for (var task in tasks) {
    inDegree[task] = 0; // Inisialisasi dengan nilai 0
  }

  // Hitung in-degree berdasarkan ketergantungan
  dependencies.forEach((task, dependents) {
    for (var dependent in dependents) {
      inDegree[dependent] = (inDegree[dependent] ?? 0) + 1;
    }
  });

  // Queue untuk menyimpan tugas yang bisa dikerjakan (in-degree = 0)
  Queue<String> queue = Queue();
  for (var task in tasks) {
    if (inDegree[task] == 0) {
      queue.add(task); // Task dengan in-degree 0 siap dikerjakan
    }
  }

  // List untuk menyimpan urutan tugas
  List<String> order = [];

  // Proses topological sort
  while (queue.isNotEmpty) {
    String current = queue.removeFirst();
    order.add(current);

    // Kurangi in-degree dari semua tugas yang bergantung pada current
    if (dependencies.containsKey(current)) {
      for (var dependent in dependencies[current]!) {
        inDegree[dependent] = inDegree[dependent]! - 1;
        // Jika in-degree task menjadi 0, tambahkan ke queue
        if (inDegree[dependent] == 0) {
          queue.add(dependent);
        }
      }
    }
  }

  // Jika urutan valid (semua task terurut), return order
  return order.length == tasks.length ? order : [];
  
}
