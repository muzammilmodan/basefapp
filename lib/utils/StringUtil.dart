import 'package:encrypt/encrypt.dart';

class StringUtil {
  static String keystr = "MyComplexKeyForm";

  static encrypt(plainText) {
    final key = Key.fromUtf8(keystr);
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key, mode: AESMode.ecb, padding: 'PKCS7'));
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted.base64;
  }

  static decrypt(data) {
    final key = Key.fromUtf8(keystr);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key, mode: AESMode.ecb, padding: 'PKCS7'));
    //encrypter.decrypt64(encoded)
    return encrypter.decrypt64(data, iv: iv);
  }
}
