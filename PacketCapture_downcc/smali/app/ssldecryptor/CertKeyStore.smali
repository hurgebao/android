.class public final Lapp/ssldecryptor/CertKeyStore;
.super Ljava/lang/Object;
.source "CertKeyStore.kt"


# instance fields
.field private final cert:Ljava/security/cert/X509Certificate;

.field private final keyStore:Ljava/security/KeyStore;

.field private final privKey:Ljava/security/PrivateKey;

.field private final storePass:[C


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;[CLjava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "storePass"    # [C
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "privKey"    # Ljava/security/PrivateKey;

    .prologue
    const-string v0, "keyStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storePass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/ssldecryptor/CertKeyStore;->keyStore:Ljava/security/KeyStore;

    iput-object p2, p0, Lapp/ssldecryptor/CertKeyStore;->storePass:[C

    iput-object p3, p0, Lapp/ssldecryptor/CertKeyStore;->cert:Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lapp/ssldecryptor/CertKeyStore;->privKey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lapp/ssldecryptor/CertKeyStore;

    if-eqz v0, :cond_1

    check-cast p1, Lapp/ssldecryptor/CertKeyStore;

    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p1, Lapp/ssldecryptor/CertKeyStore;->keyStore:Ljava/security/KeyStore;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->storePass:[C

    iget-object v1, p1, Lapp/ssldecryptor/CertKeyStore;->storePass:[C

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->cert:Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Lapp/ssldecryptor/CertKeyStore;->cert:Ljava/security/cert/X509Certificate;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->privKey:Ljava/security/PrivateKey;

    iget-object v1, p1, Lapp/ssldecryptor/CertKeyStore;->privKey:Ljava/security/PrivateKey;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCert()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final getCertAsDer()[B
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    const-string v1, "cert.getEncoded()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getKeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public final getPrivKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public final getStorePass()[C
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->storePass:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->storePass:[C

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lapp/ssldecryptor/CertKeyStore;->cert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lapp/ssldecryptor/CertKeyStore;->privKey:Ljava/security/PrivateKey;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertKeyStore(keyStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/CertKeyStore;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storePass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/CertKeyStore;->storePass:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/CertKeyStore;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", privKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/ssldecryptor/CertKeyStore;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
