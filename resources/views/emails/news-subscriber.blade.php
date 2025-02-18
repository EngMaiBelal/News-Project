<x-mail::message>
# Introduction

Thanks For Subscribe.

<x-mail::button :url="route('home.index')">
    Visit Our News Website ...
</x-mail::button>

Thanks,<br>
{{ config('app.name') }}
</x-mail::message>
