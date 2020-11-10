class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Research on topics with course partners from other tertiary institutions..");
  sliderModel.setTitle("RESEARCH");
  sliderModel.setImageAssetPath("assets/images/researching.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Chat with other course partners from different tertiary institutions");
  sliderModel.setTitle("CHAT");
  sliderModel.setImageAssetPath("assets/images/chatting.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Meet different people from all over the country tertiary institutions.");
  sliderModel.setTitle("Meet");
  sliderModel.setImageAssetPath("assets/images/meeting.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}