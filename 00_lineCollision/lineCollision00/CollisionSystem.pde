class CollisionSystem {
  private ArrayList<Line> lines = new ArrayList<Line>();

  public void update() {
    for (Line l : lines) {
      l.resetForce();
      l.update();
    }
  }

  public void draw() {
    for (Line l : lines) {
      l.draw();
    }
  }

  public void addLine(Line l) { lines.add(l); }
}
