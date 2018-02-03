.class Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;
.super Ljava/lang/Object;
.source "JcePEMEncryptorBuilder.java"

# interfaces
.implements Lorg/spongycastle/openssl/PEMEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

.field final synthetic val$iv:[B

.field final synthetic val$password:[C


# virtual methods
.method public encrypt([B)[B
    .locals 6
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openssl/PEMException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    invoke-static {v1}, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$100(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Lorg/spongycastle/jcajce/util/JcaJceHelper;

    move-result-object v1

    iget-object v3, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$password:[C

    iget-object v2, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    invoke-static {v2}, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$000(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/openssl/jcajce/PEMUtilities;->crypt(ZLorg/spongycastle/jcajce/util/JcaJceHelper;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;

    invoke-static {v0}, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;->access$000(Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMEncryptorBuilder$1;->val$iv:[B

    return-object v0
.end method
