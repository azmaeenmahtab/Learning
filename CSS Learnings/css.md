- inline-block 
- wraps its children tightly , ultimately getting the height and width of its biggest children.

# object-cover 
- children fills its parent container maintaing its own aspect ratio, used mainly while putting an image inside a parent div. Children gets the height and width of the parent div.
# object-fit
# object-contain

----------------------------------------------------------------------------
- top-1/2 (equivalent to top: 50%) - Positions the top edge of the text card at 50% down from the top of the parent container

- -translate-y-1/2 (equivalent to transform: translateY(-50%)) - Shifts the card upward by 50% of its own height

# Here's why this keeps it centered at any height:
After top-1/2, the card's top edge is at the parent's vertical midpoint
Then -translate-y-1/2 pulls it back up by half of the card's own height
This aligns the card's center with the parent's center
The key is that translateY(-50%) is calculated based on the element's own dimensions, not the parent's. So if the card grows to 200px tall, it shifts up 100px. If it grows to 400px tall, it shifts up 200px. The center always stays aligned.

------------------------------------------------------------------------------
