{%- from 'sun-java/settings.sls' import java with context %}

{%- for bin in java.binaries %}
{{ bin }}:
  alternatives.install:
    - link: /usr/bin/{{bin}}
    - path: {{ java.java_home }}/bin/{{ bin }}
    - priority: 100
  alternatives:
    - auto
{%- endfor %}
