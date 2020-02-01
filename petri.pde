
class Petri{
  ArrayList<Cell> cells; // arraylist of cells
  PVector origin; // placeholder.
  int transparency; //placeholder. transparency is updated in cell class
  boolean frozone;
  
  Petri(PVector coffee){
    origin=coffee; // does nothing
    cells = new ArrayList<Cell>();
    frozone = true;
  }
  
  void addCell() {
      cells.add(new Cell(origin,43,54,240,transparency)); // makes new cells
  }

  void run() {
    
    for (int i = cells.size()-1; i>=0; i--) {
      Cell p = cells.get(i);   

      p.run();
      if (p.alive()) {
        cells.remove(i);
        
      }
    }}
}
