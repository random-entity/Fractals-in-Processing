ArrayList<Segment> kochCurve;

void setup() {
  size(1200, 600);
  kochCurve = new ArrayList<Segment>();
  kochCurve.add(new Segment(new PVector(0, height - 10), new PVector(width, height - 10)));
}

void draw() {
  background(200);
  for (Segment s : kochCurve) {
    s.display();
  }

  text(kochCurve.size(), 20, 20);
}

void mousePressed() {
  println("d");
  generate();
}

void generate() {
  ArrayList<Segment> next = new ArrayList<Segment>();

  for (Segment s : kochCurve) {
    PVector a = s.getPoint(0);
    PVector b = s.getPoint(1);
    PVector c = s.getPoint(2);
    PVector d = s.getPoint(3);
    PVector e = s.getPoint(4);

    next.add(new Segment(a, b));
    next.add(new Segment(b, c));
    next.add(new Segment(c, d));
    next.add(new Segment(d, e));
  }

  kochCurve = next;
}
