class Segment {
  PVector start;
  PVector end;

  public Segment(PVector start, PVector end) {
    this.start = start;
    this.end = end;
  }

  public PVector getPoint(int index) {
    PVector dir = PVector.sub(end, start);

    switch(index) {
    case 0: 
      return start;
    case 1: 
      return PVector.add(start, dir.div(3));
    case 2:
      PVector mid = PVector.add(start, dir.div(2));
      dir.mult(0.57735026919);
      dir.rotate(-HALF_PI);
      return mid.add(dir);
    case 3:
      return PVector.add(end, dir.div(-3));
    case 4:
      return end;
    default:
      return null;
    }
  }

  void display() {
    line(start.x, start.y, end.x, end.y);
  }
}
