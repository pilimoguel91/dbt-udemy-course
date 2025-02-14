{% macro learn_variables() %}
{% set your_name_jinja = "Pili" %}
{{ log("Hello" ~your_name_jinja, info = True)}}

{{ log("Hello dbt user " ~ var("user_name", "NO USER NAME IS SET!") ~"!", info=True) }}
{% endmacro %}