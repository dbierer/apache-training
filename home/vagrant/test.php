<?php
// For more information see: https://wiki.php.net/rfc/libsodium
$text = 'This is something I want to encrypt!!!';
$key = sodium_crypto_kdf_keygen();
$nonce = sodium_crypto_shorthash_keygen();
$message = sodium_crypto_secretbox(
        $text,
        $key,
        $nonce
);
var_dump($message);

