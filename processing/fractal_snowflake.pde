class KochLine {
  PVector start;
  PVector end;
  
  KochLine(PVector a, PVector b) {
    start = a.get();
    end = b.get();
  }
  
  void display() {
    stroke(0);
    line(start.x, start.y, end.x, end.y);
  }
  
  float length() {
    return end.x - start.x;
  }
  
  float newLength() {
    return length() / 3;
  }
  
  PVector kochA() {
    return start.get();
  }
  
  PVector kochE() {
    return end.get();
  }
  
  PVector kochB() {
    PVector v = PVector.sub(end, start);
    v.div(3);
    v.add(start);
    return v;
  }
  
  PVector kochD() {
    PVector v = PVector.sub(end, start);
    v.mult(2/3.0);
    v.add(start);
    return v;
  }
  
  PVector kochC(){
    PVector a = start.get();
    PVector v = PVector.sub(end, start);
    v.div(3);
    a.add(v);
    v.rotate(-radians(60));
    a.add(v);
    return a;
  }

}

ArrayList<KochLine> lines;

void setup() {
  size(600, 600);
  lines = new ArrayList<KochLine>();
  PVector topLeft = new PVector(100, 100); 
  PVector topRight = new PVector(width - 100, 100); //100, 100 -> 500, 100
  PVector bottomLeft = new PVector(100, height - 100);
  PVector bottomRight = new PVector(width - 100, height - 100); // 100, 500 -> 500, 500
  
  lines.add(new KochLine(topLeft, topRight));
  lines.add(new KochLine(topRight, bottomRight));
  lines.add(new KochLine(bottomRight, bottomLeft));
  lines.add(new KochLine(bottomLeft, topLeft));

  PVector mediumTopLeft = new PVector(150, 150);
  PVector mediumTopRight = new PVector(width - 150, 150);
  PVector mediumBottomLeft = new PVector(150, height - 150);
  PVector mediumBottomRight = new PVector(width - 150, height - 150);
  
  lines.add(new KochLine(mediumTopLeft, mediumTopRight));
  lines.add(new KochLine(mediumTopRight, mediumBottomRight));
  lines.add(new KochLine(mediumBottomRight, mediumBottomLeft));
  lines.add(new KochLine(mediumBottomLeft, mediumTopLeft));
  
  PVector smallTopLeft = new PVector(200, 200);
  PVector smallTopRight = new PVector(width - 200, 200);
  PVector smallBottomLeft = new PVector(200, height - 200);
  PVector smallBottomRight = new PVector(width - 200, height - 200);
  
  lines.add(new KochLine(smallTopLeft, smallTopRight));
  lines.add(new KochLine(smallTopRight, smallBottomRight));
  lines.add(new KochLine(smallBottomRight, smallBottomLeft));
  lines.add(new KochLine(smallBottomLeft, smallTopLeft));
  
  PVector tinyTopLeft = new PVector(250, 250);
  PVector tinyTopRight = new PVector(width - 250, 250);
  PVector tinyBottomLeft = new PVector(250, height - 250);
  PVector tinyBottomRight = new PVector(width - 250, height - 250);
  
  lines.add(new KochLine(tinyTopLeft, tinyTopRight));
  lines.add(new KochLine(tinyTopRight, tinyBottomRight));
  lines.add(new KochLine(tinyBottomRight, tinyBottomLeft));
  lines.add(new KochLine(tinyBottomLeft, tinyTopLeft));
  
  drawFlake();
}

void drawFlake() {
  background(255);
  for (KochLine l : lines) {
    l.display();
  }
}

void draw() {}

void generate() {
  ArrayList next = new ArrayList<KochLine>();
  for (KochLine l : lines ) {
    PVector a = l.kochA();
    PVector b = l.kochB();
    PVector c = l.kochC();
    PVector d = l.kochD();
    PVector e = l.kochE();
    next.add(new KochLine(a, b));
    next.add(new KochLine(b, c));
    next.add(new KochLine(c, d));
    next.add(new KochLine(d, e));
    
  }
  lines = next;
}

int clicks = 0;

void mouseClicked(){
  if (clicks < 10) {
    generate();
    drawFlake();
    clicks += 1;
  }
}
