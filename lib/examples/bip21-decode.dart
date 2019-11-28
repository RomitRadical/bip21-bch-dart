import 'package:bip21_bch_dart/bip21.dart';

main() {
  String bip21 =
      'bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s?amount=1&label=%23BCHForEveryone';
  Bip21.decode(bip21);
// { address: 'bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s', options: { amount: 1, label: '#BCHForEveryone' } }

  String _bip21 =
      'bitcoincash:qpum6dwnqmmysdggrprse8ccjq7ldcrfqgmmtgcmny?amount=12.5&label=coinbase%20donation&message=and%20ya%20don%27t%20stop';
  Bip21.decode(_bip21);
// { address: 'bitcoincash:qpum6dwnqmmysdggrprse8ccjq7ldcrfqgmmtgcmny',
//   options:
//    { amount: 12.5,
//      label: 'coinbase donation',
//      message: 'and ya don\'t stop'
//    }
// }

  String __bip21 =
      'bitcoincash:qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03?amount=42&label=no%20prefix';
  Bip21.decode(__bip21);
// { address: 'qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03', options: { amount: 42, label: 'no prefix' } }
}
