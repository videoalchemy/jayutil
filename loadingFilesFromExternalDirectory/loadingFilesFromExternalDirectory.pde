String[] filenames;
String fullPath = "C:/WINDOWS/Web/Wallpaper"; // use forward slashes

void setup() {
  filenames = loadFilenames(fullPath);
  println(filenames);
  exit();
}

String[] loadFilenames(String path) {
  File folder = new File(path);
  FilenameFilter filenameFilter = new FilenameFilter() {
    public boolean accept(File dir, String name) {
      return name.toLowerCase().endsWith(".jpg"); // change this to any extension you want
    }
  };
  return folder.list(filenameFilter);
}

