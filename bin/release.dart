import 'package:dcli/dcli.dart';

void main() {
  /*String multiLineString = ''' 
  This is a multiline string
  it can happen at anytime
  wherever you want .
  ''';
  print(multiLineString); */

// a multilie string here
  print('''#  --------------------
  # Release new Version
  # --------------------
  ''');

// here i asked for user input using the api ask() from dcli
  final newVersion = ask('Enter new version:',
      validator: Ask.regExp(
        r'^\d+\.\d+$',
        error: 'You must pass a valid semver version in the form of X.Y.Z',
      ));

// read a file from the pubspec, ultimately loads the older version
  /*try {
    final pubspec = File('./pubspec.yaml').readAsStringSync();

    final currentVersion = loadYaml(pubspec)['version'];

    print('# Updating from version $currentVersion to version &newVersion...');

    'pubspec.yaml'.write(pubspec.replaceFirst(
        'version:  $currentVersion', 'version:  $newVersion'));

    print('# Pubspec updated to the version $newVersion');
  } catch (e) {
    printerr('Failed to update to the version $newVersion\nError: $e');
  } */
}
