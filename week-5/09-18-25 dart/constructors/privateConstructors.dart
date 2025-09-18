class DatabaseConnection {

  static final DatabaseConnection databaseConnection = DatabaseConnection._("Oracle DB");

  DatabaseConnection._(String name) {
    print("$name connection created.");
  }

  factory DatabaseConnection.callMe() {
    /*every time the constructor in called the same instance is returned.
      this is useful when only one object needs to be created.
    */
    return databaseConnection;
  }
}

void main() {
  DatabaseConnection databaseConnection = DatabaseConnection.callMe();

}



