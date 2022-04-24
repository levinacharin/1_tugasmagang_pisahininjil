void main(List<String> arguments) {

  String input="1 Kisah Para Rasul 5:1,2,3-5,6-9";
  String injil="";
  String pasal="";
  List ayat=[];
  List hasil=[];
  List dibagidepanbelakang = input.split(":");
  String depan="";
  String belakang="";
  depan=dibagidepanbelakang[0];
  belakang=dibagidepanbelakang[1];

  //DEPAN ( INJIL & PASAL )
  List injildanpasal = depan.split(" ");
  int i=0;
  for(i=0;i<injildanpasal.length-1;i++){
    injil=injil+" "+injildanpasal[i];
  }
  hasil.add(injil);
  pasal=injildanpasal[i];
  hasil.add(pasal);

  //BELAKANG (AYAT)
  List kumpulanayat=belakang.split(",");
  List ayatdetail=[];

  for(int i=0;i<kumpulanayat.length;i++){
    ayatdetail.add(kumpulanayat[i].split("-").toString());
  }
  List ayatdetailtanpakurung=[];

  for(int i=0;i<ayatdetail.length;i++){
    for(int j=0;j<ayatdetail[i].length;j++){
      if(ayatdetail[i][j]==","){
        ayatdetailtanpakurung.add("-");
      }
      else if(ayatdetail[i][j]!="["&&ayatdetail[i][j]!="]"&&ayatdetail[i][j]!=" "&&ayatdetail[i][j]!=","){
      ayatdetailtanpakurung.add(num.parse(ayatdetail[i][j]));
      }
      
    }
  
  }
  
  for(int i=0;i<ayatdetailtanpakurung.length;i++){
    if(ayatdetailtanpakurung[i]!="-"){
      ayat.add(ayatdetailtanpakurung[i]);
    }else{
      for(int j=ayatdetailtanpakurung[i-1]+1;j<ayatdetailtanpakurung[i+1];j++){
        ayat.add(j);
      }
    }
  }
  
  hasil.add(ayat);

  for(int i=0;i<hasil.length;i++){
    if(i==0){
      print("Injil : " + hasil[i]);
    }
    if(i==1){
      print("Pasal : " + hasil[i]);
    }
    if(i==2){
      print("Ayat : " + hasil[i].toString());
    }

  }

  
}
