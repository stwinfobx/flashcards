<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

define('WP_HOME', 'https://matched-profit-definition-durham.trycloudflare.com/flashcards');
define('WP_SITEURL', 'https://matched-profit-definition-durham.trycloudflare.com/flashcards');

// Isso força o WordPress a aceitar o tráfego HTTPS vindo da Cloudflare
if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] === 'https') {
    $_SERVER['HTTPS'] = 'on';
}


// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'flashcards' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         ';P_9ZHFdq|0rUZX2!M6Wi1E7)u;XlS-GKjPQlWy!.GH*[s@laS>JyeM>F{gglXO<' );
define( 'SECURE_AUTH_KEY',  ';;4$2Rw7<H3j7#RdRp+kGbhx56G-bGQ`qhvjmVLPqQ@_Kof|pLd?4I9m;F},((d}' );
define( 'LOGGED_IN_KEY',    '}/%O@aN0]:%,AFMl1|(7.Yl-L@`zLU0}JBV5/:gE4$>}FgX=|`o~7P}yiP[TwOYN' );
define( 'NONCE_KEY',        'ZR+p6nxf9F3|@!ODhsE4xYkgZXL?X4T/4%G71!8FRRi<jYeS)?f5Lh(}i:jPrA6j' );
define( 'AUTH_SALT',        'i d$5:wc}|~UWv{JeWbX(CMn!VDH//P:Y}-eA[l_F_eV+e@ZMy:dj^D|= 8ZbI.j' );
define( 'SECURE_AUTH_SALT', 'T+APhU#lC)@$sDdC7,CJ/E6FWj-@&=0p|qexZRDm&e )IG9G_D<LSpw`__1kiR<U' );
define( 'LOGGED_IN_SALT',   'Ab&Uwuf_a<P0~%+@Q-jL,[rbT9G?o_TpzNoNfpr~-cnOi#H$8p$8?3Q~Px|),3Z*' );
define( 'NONCE_SALT',       '*/D]#_7(R8=mGR)9M)K5Wg6!K]hj{e2,Sw9]IWUEi`J6 tS:waiD=pp{q>P.MO@R' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
