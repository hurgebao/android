.class Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;,
        Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method static calculateKeyId(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 6
    .param p0, "info"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    const/4 v5, 0x0

    .line 16
    new-instance v0, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;-><init>()V

    .line 17
    .local v0, "dig":Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
    invoke-virtual {v0}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    .line 18
    .local v2, "hash":[B
    new-array v3, v5, [B

    .line 21
    .local v3, "spkiEnc":[B
    :try_start_0
    const-string v4, "DER"

    invoke-virtual {p0, v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 29
    array-length v4, v3

    invoke-virtual {v0, v3, v5, v4}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->update([BII)V

    .line 31
    invoke-virtual {v0, v2, v5}, Lorg/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->doFinal([BI)I

    .line 33
    .end local v2    # "hash":[B
    :goto_0
    return-object v2

    .line 23
    .restart local v2    # "hash":[B
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/io/IOException;
    new-array v2, v5, [B

    goto :goto_0
.end method
