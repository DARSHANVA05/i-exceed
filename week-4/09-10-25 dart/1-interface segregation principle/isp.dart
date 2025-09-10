abstract class Printer {
  void executePrint();
}

abstract class Scanner {
  void executeScanner();
}

abstract class Fax {
  void executeFax();
}

class AllInOnePrinter implements Printer, Scanner, Fax {
  void executePrint() => print("AllInOnePrinter printing...");
  void executeScanner() => print("AllInOnePrinter scanning...");
  void executeFax() => print("AllInOnePrinter faxing...");
}

class ScannerPrinter implements Printer, Scanner {
  void executePrint() => print("ScannerPrinter printing...");
  void executeScanner() => print("ScannerPrinter scanning...");
}

class FaxPrinter implements Fax {
  void executeFax() => print("FaxPrinter faxing...");
}

main() {
  AllInOnePrinter allInOnePrinter = AllInOnePrinter();
  allInOnePrinter.executeScanner();
  allInOnePrinter.executeFax();
  allInOnePrinter.executePrint();
  print("\n");

  ScannerPrinter scannerPrinter = ScannerPrinter();
  scannerPrinter.executeScanner();
  scannerPrinter.executePrint();
  print("\n");

  FaxPrinter faxPrinter = FaxPrinter();
  faxPrinter.executeFax();
}
