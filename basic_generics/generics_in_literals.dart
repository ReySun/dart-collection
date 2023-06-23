// ignore_for_file: unused_local_variable

main() {
  // Automatic type inference
  var objList = [5, 2.0]; // Type: List<num>
  // Explicit type definition:
  var objList2 = <Object>[5, 2.0]; // Type: List<Object>
  // Sets work identically:
  var objSet = <Object>{5, 2.0};

  // Automatic type inference
  var map = {'foo': 'bar'}; // Type: Map<String, String>
// Explicit type definition:
  var map2 = <String, Object>{'foo': 'bar'}; // Type: Map<String, Object>
}
