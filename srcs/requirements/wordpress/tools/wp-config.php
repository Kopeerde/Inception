<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'kmendes-' );

/** Database password */
define( 'DB_PASSWORD', 'qwertyuiop' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ' :{MSlm7K=iA|>,rR~_n4@1dGpiLQ+|s^s+43l,,0-MdpFoywQZD;cO|I !ZK@K)');
define('SECURE_AUTH_KEY',  'sFWX|(qd_Cw@7.o1m/]v;xl7pN#]sc}dvx5$lw?>^<QOt9J!8VE}>O$t;>dON*}B');
define('LOGGED_IN_KEY',    'u2B25eO9rbtpEjXm_E:0H~Q#+nCvXF&`P}-(A9%Ey9_T)^M6-Y[v#}<+,f,TLs?w');
define('NONCE_KEY',        'yozZ4)maRjQW$b4Ut#mK&vFX7x0KwZ 2ihs)*[-8eXl`?+7B-X^mkGAL*;Pdqlev');
define('AUTH_SALT',        'Q|a5Y*k$1Iq9%(ncwtMNbB%k:_QQL*mep3Y1e:/atdRG;|Snnr$+534jT_o-KlGv');
define('SECURE_AUTH_SALT', 'LCr(QN78J0MlwOq,9s9bnR8KO9YQk`gO<.cb3u+i7<IBu$*a@^9$bGK+XZg&l|so');
define('LOGGED_IN_SALT',   'iOE_*E.8{#i]Rpa4W1_D+EpWGw`A$Q=O+K^ c|ZjNt>Fa-/#)_Q]>MjzWPTbAk`^');
define('NONCE_SALT',       '||-?iRqFUGkmL.|Mig3q]6VDMfseMoL+=<{es/4.6ruL+mn@`B[niL5<Kf5f]7H2');


/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );


/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';