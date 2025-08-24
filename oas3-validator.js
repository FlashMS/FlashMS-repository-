const parser = require("swagger-parser");
const path = process.argv[2];

if (!path) {
    console.error("Error: No spec path provided.");
    process.exit(1);
}

parser.validate(path)
    .then(api => {
        console.log("✅ OpenAPI schema is valid.");
        console.log(`Title: ${api.info.title}`);
        console.log(`Version: ${api.info.version}`);
    })
    .catch(err => {
        console.error("❌ Schema validation failed:");
        console.error(err.message);
        process.exit(1);
    });
