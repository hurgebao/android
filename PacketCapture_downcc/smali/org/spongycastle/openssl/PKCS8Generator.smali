.class public Lorg/spongycastle/openssl/PKCS8Generator;
.super Ljava/lang/Object;
.source "PKCS8Generator.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectGenerator;


# static fields
.field public static final AES_128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES_192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES_256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final DES3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_2DES:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_3DES:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC2_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC2_40:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC4_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC4_40:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private key:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

.field private outputEncryptor:Lorg/spongycastle/operator/OutputEncryptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->AES_128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->AES_192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->AES_256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->DES3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_40:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_3DES:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_2DES:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_40:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private generate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;Lorg/spongycastle/operator/OutputEncryptor;)Lorg/spongycastle/util/io/pem/PemObject;
    .locals 8
    .param p1, "key"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "encryptor"    # Lorg/spongycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v4

    .line 65
    .local v4, "keyData":[B
    if-nez p2, :cond_0

    .line 67
    new-instance v5, Lorg/spongycastle/util/io/pem/PemObject;

    const-string v6, "PRIVATE KEY"

    invoke-direct {v5, v6, v4}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    .line 80
    :goto_0
    return-object v5

    .line 70
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p2, v0}, Lorg/spongycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 74
    .local v1, "cOut":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 76
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 78
    new-instance v3, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-interface {p2}, Lorg/spongycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 80
    .local v3, "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    new-instance v5, Lorg/spongycastle/util/io/pem/PemObject;

    const-string v6, "ENCRYPTED PRIVATE KEY"

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cOut":Ljava/io/OutputStream;
    .end local v3    # "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v4    # "keyData":[B
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lorg/spongycastle/util/io/pem/PemGenerationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to process encoded key data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public generate()Lorg/spongycastle/util/io/pem/PemObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/spongycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/spongycastle/operator/OutputEncryptor;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/spongycastle/openssl/PKCS8Generator;->key:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    iget-object v1, p0, Lorg/spongycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/spongycastle/operator/OutputEncryptor;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/openssl/PKCS8Generator;->generate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;Lorg/spongycastle/operator/OutputEncryptor;)Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/openssl/PKCS8Generator;->key:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/openssl/PKCS8Generator;->generate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;Lorg/spongycastle/operator/OutputEncryptor;)Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object v0

    goto :goto_0
.end method
