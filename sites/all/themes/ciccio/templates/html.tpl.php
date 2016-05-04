<?php
/**
 * Ciccio theme
 * @file
 * Returns the HTML for the basic html structure of a single Drupal page.
 *
 * Complete documentation for this file is available online.
 * @see https://drupal.org/node/1728208
 */
?><!DOCTYPE html>
<html lang="<?php print $language->language; ?>">
<head>
    <?php print $head; ?>
    <title><?php print $head_title; ?></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

    <?php print $styles; ?>

</head>
    <body class="ciccio <?php print $classes; ?>" <?php print $attributes; ?>>

    <!-- Page Top -->
    <?php print $page_top; ?>

    <!-- Page -->
    <?php print $page; ?>

    <!-- Main scripts -->
    <?php print $scripts; ?>

    <!-- Page Bottom -->
    <?php print $page_bottom; ?>
    </body>
</html>