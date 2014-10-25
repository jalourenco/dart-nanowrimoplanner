
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

  print("""
${n.title}
${n.author}

${n.chapters.length} Chapters
""");
  
  n.chapters.forEach((c) {
    print("""${"~" * 80}
CHAPTER : ${c.title.toUpperCase()}
${"- " * 40}
${c.summary}
        
    CHARACTERS : ${c.characters}
    LOCATIONS  : ${c.locations}
    PACING     : ${c.pacing}
    ATMOSPHERE : ${c.atmosphere}
    LENGTH     : ${c.length}
""");

  });
}

// Main
// -----
void main() {

  print("Novel Planner v0.3");
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
