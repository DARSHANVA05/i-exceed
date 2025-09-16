class Employee {
  final String name;

  Employee(this.name);

  void work() {
    print('$name is working.');
  }
}
/*
  These are general purpose mixins.
  They can be used by any number of classes by using with keyword. 
 */
mixin Coder {
  void writeCode() {
    print('Writing code...');
  }
}

mixin Tester {
  void testSoftware() {
    print('Testing software...');
  }
}

mixin Manager {
  void manageTeam() {
    print('Managing the team...');
  }
}

/*Any class can use the above mixins*/
class Developer extends Employee with Coder, Tester {
  Developer(String name) : super(name);
}

class QAEngineer extends Employee with Tester {
  QAEngineer(String name) : super(name);
}

class TeamLead extends Employee with Coder, Tester, Manager {
  TeamLead(String name) : super(name);
}

void main() {
  Developer dev = Developer("Developer");
  dev.work();
  dev.writeCode();
  dev.testSoftware();

  QAEngineer qa = QAEngineer('QA 1');
  qa.work();
  qa.testSoftware();

  TeamLead lead = TeamLead('TL 1');
  lead.work();
  lead.writeCode();
  lead.testSoftware();
  lead.manageTeam();
}
