# What's the fuss? Let them pay you!

How come only stores accept debit/credit cards? You should be able
to accept them too. Let your friends send you some money, or charge
for impromptu consulting. Just deploy this app to Heroku, change some
variables and you're in business.

This thing doesn't ask the customer much, just for an email
and the payment amount. All the credit card info stays on
[Stripe](https://stripe.com) so you have nothing to worry about.

You can see it in action [here](http://pay.begriffs.com). If you like
it, why not donate? ;)

## Installation

1. Get a [Stripe](https://stripe.com) account and find your API keys.
1. Fork and clone this repo.
1. Get a [Heroku](http://heroku.com) account.
1. Deploy this app to a new Heroku instance.
1. Set the environment variables (see below).
1. Profit? Quite possibly.

For each variable below, set its value in your heroku instance by
running `$ heroku config:add VARIABLE_NAME=value`.

<table>
  <thead>
    <tr>
      <th>Value</th>
      <th>Variable Name</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Your Name</td>
      <td>PAYEE_NAME</td>
      <td>John Doe</td>
    </tr>
    <tr>
      <td>Your Twitter Handle</td>
      <td>PAYEE_TWITTER</td>
      <td>jdoe</td>
    </tr>
    <tr>
      <td>Shorthand url of your site</td>
      <td>PAYEE_SITE</td>
      <td>jdoe.com</td>
    </tr>
    <tr>
      <td>Full URL of your site</td>
      <td>PAYEE_SITE_URL</td>
      <td>http://jdoe.com</td>
    </tr>
    <tr>
      <td>Stripe public key</td>
      <td>STRIPE_PUBLISHABLE_KEY</td>
      <td>pk_xyz</td>
    </tr>
    <tr>
      <td>Stripe private key</td>
      <td>STRIPE_SECRET_KEY</td>
      <td>sk_abc</td>
    </tr>
  </tbody>
</table>

## Requesting Payment?

If you using lucre to collect an owed debt you can specify the email and/or amount you intend to collect.

```
http://pay.begriffs.com/?email=generous-client@example.com
```

The above will fill-in the email address of the person from whom you are collecting monies.

```
http://pay.begriffs.com/?email=client@example.com&amount=47.39
```

The above will fill-in your client's email address and amount to be collected, in this case $47.39.

## Contributing

To run this project locally in development, copy the `.env.example` to
`.env` and fill in the blanks. It contains the environment variables
described in the table above. The app does not require setting up a
database.

Use the stripe test credentials provided in your account to use fake
cards without issuing real charges. There are a variety of [test card
numbers](https://stripe.com/docs/testing#cards) to simulate any kind of
error or card event.

## License

Lucre is Copyright © 2013 Joe Nelson. It is free software, and may be
redistributed under the terms specified in the LICENSE file.
