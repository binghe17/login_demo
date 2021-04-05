<?php
/**
 * Created by Chris on 9/29/2014 3:55 PM.
 */

class Hash {
    public static function make($string, $salt = '') {
        return hash('sha256', $string . $salt);
    }

    public static function salt($length) {
        return self::_generateSalt();
        // return random_bytes($length); //php7.2 x
        // return mcrypt_create_iv($length);//php x
    }

    public static function unique() {
        return self::make(uniqid());
    }

    /**
    * Generates a 128 len string used as a random salt for
    * securing you oneway encrypted password
    *
    * @return String with 128 characters
    */

    private function _generateSalt()
    {
        $salt = null;

        while( strlen($salt) < 128 )
            $salt = $salt.uniqid(null, true);

        return substr($salt, 0, 128);
    }

}