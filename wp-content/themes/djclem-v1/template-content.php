<?php /* Template Name: Content Page Template */ ?>

<?php get_header(); ?>

<main role="main">

    <div class="container-fluid">

        <div class="row">

            <div class="col-6 offset-2">

                <!-- section -->
                <section>

		            <?php if (have_posts()): while (have_posts()) : the_post(); ?>

                        <!-- article -->
                        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

				            <?php the_content(); ?>

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
