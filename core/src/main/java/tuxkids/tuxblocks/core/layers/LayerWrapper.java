package tuxkids.tuxblocks.core.layers;

import playn.core.ImageLayer;
import playn.core.Layer;
import playn.core.Pointer.Listener;
import tripleplay.util.Colors;
import tuxkids.tuxblocks.core.PlayNObject;

public class LayerWrapper extends PlayNObject implements LayerLike {
	private Layer layer;
	
	public LayerWrapper(Layer layer) {
		this.layer = layer;
	}
	
	@Override
	public Layer layerAddable() {
		return layer;
	}

	@Override
	public void setTranslation(float x, float y) {
		layer.setTranslation(x, y);
	}

	@Override
	public void setVisible(boolean visible) {
		layer.setVisible(visible);
	}

	@Override
	public void setTint(int tint) {
		layer.setTint(tint);
	}

	@Override
	public void setTint(int baseColor, int tintColor, float perc) {
		setTint(Colors.blend(baseColor, tintColor, perc));
	}

	@Override
	public void addListener(Listener pointerListener) {
		layer.addListener(pointerListener);
	}

	@Override
	public float tx() {
		return layer.tx();
	}

	@Override
	public float ty() {
		return layer.ty();
	}

	@Override
	public void setInteractive(boolean interactive) {
		setInteractive(interactive);
	}
}