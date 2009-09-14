package com.pblabs.screens
{
    import com.pblabs.rendering2D.ui.PBLabel;
    import flash.geom.*;

	public class PlaceholderScreen extends BaseScreen
	{
		public function PlaceholderScreen(caption:String, bgColor:uint)
		{
		    super();
            
            addChild(captionLabel);
            captionLabel.extents = new Rectangle(0, 0, 250, 50);
            captionLabel.fontBold = true;
            captionLabel.caption = caption;
            captionLabel.fontColor = 0xFFFFFF;
            captionLabel.refresh();
            
            fillColor = bgColor;
		}
        
        public override function onShow():void
        {
            // Draw a background that fills the screen.
            graphics.clear();
            graphics.beginFill(fillColor);
            graphics.drawRoundRect(0, 0, stage.stageWidth, stage.stageHeight, 16, 16);
            graphics.endFill();
        }
        
        public var fillColor:uint = Math.random() * 0xFFFFFF;
        public var captionLabel:PBLabel = new PBLabel();
	}
}