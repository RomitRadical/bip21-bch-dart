# BIP-21

Forked from https://github.com/videah/bip21-dart

Dart implementation of the [BIP-21](https://github.com/bitcoin/bips/blob/master/bip-0021.mediawiki) Bitcoin Cash URI scheme.

Based on the [bitbox-sdk](https://developer.bitcoin.com/bitbox/docs/bitcoincash#encodebip21) implementation.

### Bip21.encode
Encodes address and options as BIP21 uri

### Arguments
address string: cashaddr (w/ or w/out prefix)
options EncodeBIP21Options: options such as amount, label, message etc

### Result
bip21 string: bip21 encoded uri

## Examples

```dart
import 'package:bip21/bip21.dart';

main() {
String address = 'bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s';
Map<String, dynamic> options = {
  'amount': 1,
  'label': '#BCHForEveryone',
};
Bip21.encode(address, options);
// bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s?amount=1&label=%23BCHForEveryone

String address = 'qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03';
Map<String, dynamic> options = {
  'amount': 42,
  'label': 'no prefix',
};
Bip21.encode(address, options);
// bitcoincash:qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03?amount=42&label=no%20prefix
}
```

### Bip21.decode
Decodes BIP21 uri

### Arguments
bip21 string: bip21 encoded uri

### Result
results BIP21 Map<String, dynamic>Object: decoded bip21 uri

## Examples

```dart
import 'package:bip21/bip21.dart';

main(){
String bip21 =
  'bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s?amount=1&label=%23BCHForEveryone';
Bip21.decode(bip21);
// { address: 'bitcoincash:qrdsfshx7yzfjl9sfj2khuja5crcu4vaxqrt2qkz5s', options: { amount: 1, label: '#BCHForEveryone' } }

String bip21 =
  'bitcoincash:qpum6dwnqmmysdggrprse8ccjq7ldcrfqgmmtgcmny?amount=12.5&label=coinbase%20donation&message=and%20ya%20don%27t%20stop';
Bip21.decode(bip21);
// { address: 'bitcoincash:qpum6dwnqmmysdggrprse8ccjq7ldcrfqgmmtgcmny',
//   options:
//    { amount: 12.5,
//      label: 'coinbase donation',
//      message: 'and ya don\'t stop'
//    }
// }

String bip21 =
  'bitcoincash:qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03?amount=42&label=no%20prefix';
Bip21.decode(bip21);
// { address: 'qzw6tfrh8p0jh834uf9rhg77pjg5rgnt3qw0e54u03', options: { amount: 42, label: 'no prefix' } }
}
```

# License

This library is licensed under the MIT license. Please read the [LICENSE](LICENSE) file for more information.
