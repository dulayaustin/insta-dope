module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
  ],
  safelist: [
    "border-red-500",
    "focus:border-red-600",
    "focus:ring-red-600",
    "text-red-500",
  ],
  plugins: [require("@tailwindcss/forms")],
};
