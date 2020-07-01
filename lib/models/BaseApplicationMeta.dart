const APP_NAME = "flow";

class BaseApplicationMeta {
  String name;
  String title;
  String saveLoc;
  String version;

  static BaseApplicationMeta of(String version) {
    BaseApplicationMeta application = new BaseApplicationMeta();
    application.name = APP_NAME;
    application.version = version;
    return application;
  }

}