const fs = require("fs");


fs.readdirSync("./")
    .filter((file) => file.includes(".in."))
    .forEach((file) => {
        let contents = fs.readFileSync(file, "utf-8")
            .split("\n");
        contents = contents.filter((line) => line.includes("add"))
            .map((line) => line.substring('add '.length))
            .map((line) => line.replace("depends", "needs"));

        contents.forEach((c) => console.log(c));
        const result = `${contents.length}
${contents.join("\n")}`
        fs.writeFileSync(file, result, "utf-8");
    });

