.class public Lorg/spongycastle/crypto/examples/DESExample;
.super Ljava/lang/Object;
.source "DESExample.java"


# instance fields
.field private cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field private encrypt:Z

.field private in:Ljava/io/BufferedInputStream;

.field private key:[B

.field private out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->encrypt:Z

    .line 60
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 63
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    .line 66
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    .line 69
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    .line 106
    return-void
.end method
