
#Initializer for stripe
Rails.configuration.stripe = {
<<<<<<< HEAD
    :publishable_key => 'pk_test_R981wojulmBDDvE4tFB09Iql',
    :secret_key => 'sk_test_e3VtxkkZUi8NSv38psDYa12C'
=======
    :publishable_key => pk_test_R981wojulmBDDvE4tFB09Iql,
    :secret_key => sk_test_e3VtxkkZUi8NSv38psDYa12C
>>>>>>> parent of d39d9a1... resolving heroku issues
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
