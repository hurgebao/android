.class Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "BcDigestCalculatorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private dig:Lorg/spongycastle/crypto/Digest;

.field final synthetic this$0:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;


# direct methods
.method constructor <init>(Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p2, "dig"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->this$0:Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 52
    iput-object p2, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    .line 53
    return-void
.end method


# virtual methods
.method getDigest()[B
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 77
    .local v0, "d":[B
    iget-object v1, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 79
    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 71
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 65
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 59
    return-void
.end method
