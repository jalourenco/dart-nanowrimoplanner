
// Data Layer
// -----------
class Novel {

  String title;
  String author;
  List<Chapter> chapters;
  Chapter recent;

  Novel(this.title, this.author) {
    chapters = new List<Chapter>();
  }

  Chapter addPlaceholder(Title) {
    var c = new Chapter.minimal(title);
    chapters.add(c);
    recent = c;
    return c;
  }

  Chapter addChapter(Title, Summary, Characters) {
    var c = new Chapter.detailed(Title, Summary, Characters);
    chapters.add(c);
    recent = c;
    return c;
  }
}

class Chapter {
  String title = "TODO";
  String summary = "TODO";
  String characters = "TODO";
  String pacing = "TODO";
  String atmosphere = "TODO";
  String length = "TODO";
  String locations = "TODO";

  Chapter.minimal(this.title);
  Chapter.detailed(this.title, this.summary, this.characters);
}


// Presentation Layer
// -------------------

void txtOut(Novel n) {

  print(n.title);
  print(n.author);
  print("");
  print("${n.chapters.length} Chapters");
  print("");
  n.chapters.forEach((c) {
    print("~" * 80);
    print(c.title.toUpperCase());
    print("- " * 40);
    print(c.summary);
    print("");
    print("CHARACTERS : " + c.characters);
    print("LOCATIONS  : " + c.locations);
    print("PACING     : " + c.pacing);
    print("ATMOSPHERE : " + c.atmosphere);
    print("LENGTH     : " + c.length);
    print("");
  });
}

// Main
// -----
void main() {

  print("Novel Planner v0.2");
  print("");

  //---

  Novel n = new Novel("Dart Chronicles", "D. Art");
  Chapter cur;

  cur = n.addChapter("On A Boat", "Sailing the sea and meeting the crew.", "Sam the Sailor");
  cur.pacing = "Lazy";
  cur.atmosphere = "Inviting";
  cur.length = "short";
  cur.locations = "The North Sea";

  cur = n.addChapter("On A Plane", "Flying High and introduce ticking bomb plot.", "Petra the Pilot");
  cur.pacing = "Rapid";
  cur.atmosphere = "Tense";
  cur.length = "medium";

  cur = n.addChapter("The Moonbase", "Introduces the new location and Rab the Robot.", "Rab the Robot");
  cur.pacing = "Slow";
  cur.atmosphere = "Sterile";
  cur.length = "long";
  cur.locations = "Earth's Moon";

  cur = n.addPlaceholder("Epilogue");

  //---
  txtOut(n);
}
