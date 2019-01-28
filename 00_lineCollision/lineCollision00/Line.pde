class Line {
  private PVector positionA = new PVector(0, 0);
  private PVector positionB = new PVector(0, 0);
  private PVector velocityA = new PVector(0, 0);
  private PVector velocityB = new PVector(0, 0);
  private PVector forceA = new PVector(0, 0);
  private PVector forceB = new PVector(0, 0);
  private float lineWidth = 1;

  public void resetForce() {
    forceA.set(0, 0);
    forceB.set(0, 0);
  }

  public void update() {
    velocityA.add(forceA);
    velocityB.add(forceB);
    positionA.add(velocityA);
    positionB.add(velocityB);
  }

  public void draw() {
    strokeWeight(lineWidth);
    stroke(0);
    line(positionA.x, positionA.y, positionB.x, positionB.y);
  }

  public void positionA(PVector p) { positionA = p; }
  public void positionB(PVector p) { positionB = p; }
  public void velocityA(PVector v) { velocityA = v; }
  public void velocityB(PVector v) { velocityB = v; }
  public void lineWidth(float l) { lineWidth = l; }
}
