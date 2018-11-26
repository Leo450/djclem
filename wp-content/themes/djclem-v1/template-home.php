<?php /* Template Name: Home Page Template */ ?>

<?php get_header(); ?>

<div id="background" style="background-image:url('<?php echo get_the_post_thumbnail_url(); ?>');"></div>

<canvas id="anim-logo"></canvas>
<div id="anim-line"></div>

<main role="main">

    <div class="container-fluid">

        <div class="row">

            <div class="col-1">

                <div class="home-contact-container">

                    <div class="home-contact">
                        contact@clgevents.com
                    </div>

                </div>

            </div>

            <div class="col-5 offset-4">

                <!-- section -->
                <section>

		            <?php if (have_posts()): while (have_posts()) : the_post(); ?>

                        <!-- article -->
                        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

				            <?php the_content(); ?>

                            <button>View More</button>

				            <?php comments_template( '', true ); // Remove if you don't want comments ?>

                            <br class="clear">

                        </article>
                        <!-- /article -->

		            <?php endwhile; ?>

		            <?php else: ?>

                        <!-- article -->
                        <article>

                            <h2><?php _e( 'Sorry, nothing to display.', 'html5blank' ); ?></h2>

                        </article>
                        <!-- /article -->

		            <?php endif; ?>

                </section>
                <!-- /section -->

            </div>

        </div>

    </div>

</main>

<?php get_footer(); ?>
