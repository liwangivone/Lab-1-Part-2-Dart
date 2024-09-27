void main() {

  num bateraiHP = 100;

  int wktChating = 60; 
  int wktVideo = 30;   
  int wktGame = 45;     

  num persenChating = (wktChating ~/ 5) * 1; 
  num persenVideo = (wktVideo ~/ 5) * 2;      
  num persenGame = (wktGame ~/ 5) * 3;       

  num totalbaterai = persenChating + persenVideo + persenGame;
  num sisaBaterai = bateraiHP - totalbaterai;

  print("Sisa Baterai: $sisaBaterai%");
  
}
