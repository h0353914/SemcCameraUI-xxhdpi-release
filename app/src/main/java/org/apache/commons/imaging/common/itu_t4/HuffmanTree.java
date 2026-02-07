package org.apache.commons.imaging.common.itu_t4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class HuffmanTree<T> {
    private final List<HuffmanTree$Node<T>> nodes = new ArrayList();

    HuffmanTree() {
    }

    public final void insert(String str, T t) throws HuffmanTreeException {
        HuffmanTree$Node<T> huffmanTree$NodeGrowAndGetNode = growAndGetNode(0);
        if (huffmanTree$NodeGrowAndGetNode.value != null) {
            throw new HuffmanTreeException("Can't add child to a leaf");
        }
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i = str.charAt(i2) == '0' ? (i << 1) + 1 : (i + 1) << 1;
            huffmanTree$NodeGrowAndGetNode = growAndGetNode(i);
            if (huffmanTree$NodeGrowAndGetNode.value != null) {
                throw new HuffmanTreeException("Can't add child to a leaf");
            }
        }
        huffmanTree$NodeGrowAndGetNode.value = t;
    }

    private HuffmanTree$Node<T> growAndGetNode(int i) {
        while (i >= this.nodes.size()) {
            this.nodes.add(new HuffmanTree$Node<>(null));
        }
        HuffmanTree$Node<T> huffmanTree$Node = this.nodes.get(i);
        huffmanTree$Node.empty = false;
        return huffmanTree$Node;
    }

    public final T decode(BitInputStreamFlexible bitInputStreamFlexible) throws HuffmanTreeException {
        int i = 0;
        HuffmanTree$Node<T> huffmanTree$Node = this.nodes.get(0);
        while (huffmanTree$Node.value == null) {
            try {
                i = bitInputStreamFlexible.readBits(1) == 0 ? (i << 1) + 1 : (i + 1) << 1;
                if (i >= this.nodes.size()) {
                    throw new HuffmanTreeException("Invalid bit pattern");
                }
                huffmanTree$Node = this.nodes.get(i);
                if (huffmanTree$Node.empty) {
                    throw new HuffmanTreeException("Invalid bit pattern");
                }
            } catch (IOException e) {
                throw new HuffmanTreeException("Error reading stream for huffman tree", e);
            }
        }
        return huffmanTree$Node.value;
    }
}
