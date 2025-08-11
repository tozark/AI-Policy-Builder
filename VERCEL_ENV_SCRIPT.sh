#!/usr/bin/env bash
# Add dummy env values to Vercel (replace later with real creds)
set -e

vercel link || true

# Auth
vercel env add CLERK_PUBLISHABLE_KEY production "pk_test_dummy_1234567890"
vercel env add CLERK_SECRET_KEY production "sk_test_dummy_1234567890"

# Database
vercel env add NEXT_PUBLIC_SUPABASE_URL production "https://test-project.supabase.co"
vercel env add SUPABASE_ANON_KEY production "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.DUMMY.ANON"
vercel env add SUPABASE_SERVICE_ROLE_KEY production "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.DUMMY.SERVICE"
vercel env add DATABASE_URL production "postgresql://postgres:password@test-host:5432/postgres"

# Billing
vercel env add STRIPE_SECRET_KEY production "sk_test_51_dummy"
vercel env add STRIPE_WEBHOOK_SECRET production "whsec_dummy_123"
vercel env add NEXT_PUBLIC_STRIPE_PRICE_BASIC production "price_dummy_basic"
vercel env add NEXT_PUBLIC_STRIPE_PRICE_PLUS production "price_dummy_plus"

# LLM
vercel env add OPENAI_API_KEY production "sk-test-dummy"
vercel env add OPENAI_BASE_URL production "https://api.openai.com/v1"

# App
vercel env add NEXT_PUBLIC_APP_URL production "https://your-project.vercel.app"
vercel env add TEMPLATES_VERSION production "2025.08.0"

echo "Done. Now run: vercel --prod"
