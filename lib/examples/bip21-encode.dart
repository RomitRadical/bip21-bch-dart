import 'package:bip21_bch_dart/bip21.dart';

main() {
  String address = 'bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s';
  Map<String, dynamic> options = {
    'amount': 1,
    'label': '#BCHForEveryone',
  };
  Bip21.encode(address, options);
// bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s?amount=1&label=%23BCHForEveryone

  String _address = 'qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03';
  Map<String, dynamic> _options = {
    'amount': 42,
    'label': 'no prefix',
  };
  Bip21.encode(_address, _options);
// bitcoincash:qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03?amount=42&label=no%20prefix
}
