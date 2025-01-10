# README

This is a template for a rails new 8 with hotwire and tailwind.
Circle CI is confugured with Rspec


CREATE ROLE notes_user WITH LOGIN PASSWORD 'notes_password';
ALTER ROLE notes_user CREATEDB;
CREATE ROLE notes_user_test WITH LOGIN PASSWORD 'notes_password_test';
ALTER ROLE notes_user_test CREATEDB;

bin/rails action_text:install

bin/setup
