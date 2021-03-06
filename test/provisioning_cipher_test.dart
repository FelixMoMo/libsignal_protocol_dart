import 'dart:convert';

import 'package:libsignal_protocol_dart/libsignal_protocol_dart.dart';
import 'package:test/test.dart';

void main() {
  test('testDecrypt', () {
    var privateKey = "GHtZBYTNqbCofFo0keD3jTGoHF6bUAeiW9iV5ad/HHA=";
    var content =
        "eyJwdWJsaWNfa2V5IjoiQmZFOWJFa3EzZ2FsUTFHTnVEMWlJaHBrSkE0RHRTVUxkYXhkS3JiZndMcDgiLCJib2R5IjoiQVd6YWZJSDEyZ2tTQmRjdVplSXRMM3lXVmhZdW1lemppZk9rbFdsV3lnQzVKSXpzMHVxYXFZNnhsdFJzVWJya2N0NGFLazVKSmxwYlBKSXNqTU5qYXZKR1hNSFpOSnQ2SXZ1S1pkUVwvN1RzbjRUUjhmWjNSUXo2aGM3RlpYZENLTUJMVzJHTjAzSDd3aUt1elArZVV4WktCQjFPb2pWaVlSU0Vyc3dUWGwxeWR5cnhcLzM1NVY5MzFCR0N1VlBLVXFuOUJFWCtidVFhYms3YWZYdEVCOUI2YTZGSnFCZXVGcHdcLzlDdWpwYVpXNzNIMmswTmxkNjdPMzB5QkZEM3RuNmtiaXZ3MzNjN0l2Uk9EYlwvQnFTS1NGSlJoMUE2eU1leTAyeHZkNkJpRkxja1FRQk9LXC9ROW5ZOExoM2VlS2FNNTQ3cVV3XC9qUEE0ZGE5TzI0RkJUXC9ON2NvR2dBOVkrN1pvZ0syQ3YzbDZCNG9CN0xyTCtrVlRWTHJ2MFA1aDF3YklrUm10YWRLQmxiTjVvK3RnVUZ5VnVNcWFXQVJ6QnBJNlVDajVaZ0JJVWJWM3N0enVwUXpYU0E5OVBWV3hXOTE2dz09In0=";
    var plaintext = decrypt(privateKey, content);
    var result = utf8.decode(plaintext, allowMalformed: true);
    print(result);
  });
}
