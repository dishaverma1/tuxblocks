package tuxkids.tuxblocks.core.solve.blocks.n.sprite;

import tuxkids.tuxblocks.core.utils.HashCode;

public class NumberBlockSprite extends BaseBlockSprite {

	protected int value;
	
	@Override
	public NumberBlockSprite inverse() {
		return this;
	}
	
	public NumberBlockSprite(int value) {
		super("" + value);
		this.value = value;
	}
	
	@Override
	protected String text() {
		return "" + value;
	}

	public ModifierBlockSprite proxyFor() {
		ModifierBlockSprite proxy;
		if (value >= 0) {
			proxy = alignProxy(new PlusBlockSprite(value));
		} else {
			proxy = alignProxy(new MinusBlockSprite(-value));
		}
		proxy.addBlockListener(blockListener);
		return proxy;
	}
	
	protected ModifierBlockSprite alignProxy(ModifierBlockSprite proxy) {
		proxy.interpolateRect(groupLayer.tx(), groupLayer.ty(), width(), height(), 0, 1);
		return proxy;
	}

	@Override
	public void addFields(HashCode hashCode) {
		hashCode.addField(value);
	}

	@Override
	public void showInverse() {
		if ((modifiers.modifiers == null || modifiers.modifiers.modifiers == null) && modifiers.children.size() == 0) {
			value = -value;
			((BlockLayer) layer).setText("" + value);
		} else {
			modifiers.addNegative();
		}
	}
}