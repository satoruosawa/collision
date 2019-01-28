CollisionSystem collisionSystem = new CollisionSystem();

void setup() {
  size(500, 500);
  Line l = new Line();
  l.positionA(new PVector(width / 2, height / 2));
  l.positionB(new PVector(width / 2, height / 2));
  l.velocityA(new PVector(random(-1, 1), random(-1, 1)));
  l.velocityB(new PVector(random(-1, 1), random(-1, 1)));
  l.lineWidth(10);
  collisionSystem.addLine(l);
}

void update() {
  collisionSystem.update();
}

void draw() {
  update();
  background(255);
  collisionSystem.draw();
}
