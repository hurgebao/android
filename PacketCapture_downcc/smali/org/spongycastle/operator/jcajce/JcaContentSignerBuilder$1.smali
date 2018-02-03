.class Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "JcaContentSignerBuilder.java"

# interfaces
.implements Lorg/spongycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/spongycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private stream:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

.field final synthetic this$0:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

.field final synthetic val$sig:Ljava/security/Signature;


# direct methods
.method constructor <init>(Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;)V
    .locals 3

    .prologue
    .line 73
    iput-object p1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->this$0:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    iput-object p2, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    iget-object v1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->this$0:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    iget-object v2, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;-><init>(Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;)V

    iput-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->this$0:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-static {v0}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;->access$000(Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;->getSignature()[B
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Lorg/spongycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
