class BoxCollider {
  private PVector position;
  private float widthB;
  private float heightB;

  BoxCollider(PVector position, float widthB, float heightB) {
    this.position = position;
    this.widthB = widthB;
    this.heightB = heightB;
  }

  float getLeft() {
    return this.position.x;
  }

  float getRight() {
    return this.position.x + this.widthB;
  }

  float getTop() {
    return this.position.y;
  }

  float getBottom() {
    return this.position.y + this.heightB;
  }

  float getCenterY() {
    return this.position.y + this.heightB / 2.0f;
  }

  float getHeight() {
    return this.heightB;
  }
}
