#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let resp = reqwest::get("https://fakerjs-api.sherlockholmese.repl.co/wake")
        .await?;
    println!("{:#?}", resp);
    Ok(())
}