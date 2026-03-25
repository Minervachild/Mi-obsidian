#!/usr/bin/env python3
from PIL import Image, ImageDraw, ImageFont
import os

# Create a vertical 9:16 image (1080x1920)
width, height = 1080, 1920
bg_color = (0, 180, 216)  # #00B4D8
text_color = (255, 255, 255)  # White

# Create image
img = Image.new('RGB', (width, height), bg_color)
draw = ImageDraw.Draw(img)

# Try to load Arabic-supporting font, fallback to default
try:
    font_large = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", 100)
    font_medium = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", 70)
    font_small = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", 55)
except:
    font_large = ImageFont.load_default()
    font_medium = ImageFont.load_default()
    font_small = ImageFont.load_default()

# Arabic text (note: PIL may not render Arabic correctly, but we'll try)
title = "محاسب — محاسبك الذكي"
url = "sailsolutions.ai"
cta = "جرّبه مجاناً"

# Draw text centered
# Title
bbox = draw.textbbox((0, 0), title, font=font_large)
text_width = bbox[2] - bbox[0]
x = (width - text_width) // 2
draw.text((x, 600), title, fill=text_color, font=font_large)

# URL
bbox = draw.textbbox((0, 0), url, font=font_medium)
text_width = bbox[2] - bbox[0]
x = (width - text_width) // 2
draw.text((x, 1000), url, fill=text_color, font=font_medium)

# CTA
bbox = draw.textbbox((0, 0), cta, font=font_small)
text_width = bbox[2] - bbox[0]
x = (width - text_width) // 2
draw.text((x, 1200), cta, fill=text_color, font=font_small)

# Save
output_path = "/data/.openclaw/workspace/sail/demo-assets/05-end-card.png"
img.save(output_path)
print(f"End card created: {output_path}")
