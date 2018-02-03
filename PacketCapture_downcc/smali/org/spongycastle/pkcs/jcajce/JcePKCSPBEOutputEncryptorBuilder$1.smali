.class Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;
.super Ljava/lang/Object;
.source "JcePKCSPBEOutputEncryptorBuilder.java"

# interfaces
.implements Lorg/spongycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cipher:Ljavax/crypto/Cipher;

.field final synthetic val$encryptionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$encryptionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 151
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lorg/spongycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;->val$cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
