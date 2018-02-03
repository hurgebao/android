.class Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;
.super Ljava/lang/Object;
.source "JceOpenSSLPKCS8EncryptorBuilder.java"

# interfaces
.implements Lorg/spongycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

.field final synthetic val$algID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->val$algID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "encOut"    # Ljava/io/OutputStream;

    .prologue
    .line 212
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder$1;->this$0:Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;

    invoke-static {v1}, Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;->access$000(Lorg/spongycastle/openssl/jcajce/JceOpenSSLPKCS8EncryptorBuilder;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
