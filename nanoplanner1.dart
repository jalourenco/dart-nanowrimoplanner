
// Data Layer
// -----------
class Novel {
  String Title;
  String Author;
  List<Chapter> Chapters;

  Novel(this.Title, this.Author) {
    Chapters = new List<Chapter>();
  }

  void addChapter(Title, Summary, Characters) {
    Chapters.add(new Chapter(Title, Summary, Characters));
  }
}

class Chapter {
  String Title = "TODO";
  String Summary = "TODO";
  String Characters = "TODO";

  Chapter(this.Title, this.Summary, this.Characters) {}
}


// Presentation Layer
// -------------------

void txtOut(Novel n) {
  n.Chapters.forEach((c) {
    print("~" * 80);
    print(c.Title.toUpperCase());
    print("- " * 40);
    print(c.Summary);
    print("");
    print("CHARACTERS : " + c.Characters);
    print("");
  });
}

// Main
// -----
void main() {

  print("Novel Planner v0.1");
  print("");

  //---

  Novel n = new Novel("Dart Chronicles", "D. Art");

  n.addChapter("On A Boat", "Sailing the sea and meeting the crew.", "Sam the Sailor");
  n.addChapter("On A Plane", "Flying High and introduce ticking bomb plot.", "Petra the Pilot");

  //---
  txtOut(n);
}
